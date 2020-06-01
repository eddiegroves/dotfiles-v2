complete -c confluence-upload-attachment -a "(ls)" -d 'File to upload'
complete -c confluence-upload-attachment -s p -l page -f -r -d 'Confluence page identifier (get this from the URL in the browser)'
complete -c confluence-upload-attachment -s d -l dry-run -d 'Dry run'
complete -c confluence-upload-attachment -s c -l comment -d 'Comment for the file (appears on attachments page)'
