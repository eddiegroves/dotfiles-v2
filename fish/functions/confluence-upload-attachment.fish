function confluence-upload-attachment -a file --description "Upload a file as an attachment to a Confluence page"
    set -l funcname (status current-function)
    set -l options 'p/page=' 'c/comment=' 'd/dry-run'
    argparse -n $funcname $options -- $argv
    or return

    if not set -q CONFLUENCE_HOST
        printf (_ "%s: Missing environment variable %s (should be something like 'https://your-domain.atlassian.net/wiki/rest/api') \n") $funcname CONFLUENCE_HOST
        return 1
    end

    if not set -q argv[1]
        printf (_ "%s: Missing required file argument\n") $funcname
        return 1
    end

    if set -q _flag_page
        set page $_flag_page
    else
        printf (_ "%s: Missing required page argument\n") $funcname
        return 1
    end

    if set -q _flag_comment
        set comment $_flag_comment
    else
        set comment ''
    end

    set -l url "$CONFLUENCE_HOST/content/$page/child/attachment"

    if set -q _flag_dry_run
        printf (_ "%s: DRY RUN\n") $funcname
        printf (_ "%s: URL: %s\n") $funcname $url
        printf (_ "%s: File: %s\n") $funcname $file
        printf (_ "%s: Comment: %s\n") $funcname $comment
        return 0
    end

    curl -n \
    -X PUT \
    --url $url \
    -H "X-Atlassian-Token: nocheck" \
    -F "file=@$file" \
    -F "minorEdit=true" \
    -F "comment=$comment"

end
