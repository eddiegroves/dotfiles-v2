function plantuml-generate -a puml -d "Generates PNG and SVG using the PlantUML server"
    set -l funcname (status current-function)

    if not set -q PLANTUML_HOST
        printf (_ "%s: Missing environment variable %s (should be something like 'https://localhost:8080') \n") $funcname PLANTUML_HOST
        return 1
    end

    if not set -q argv[1]
        printf (_ "%s: Missing required file argument\n") $funcname
        return 1
    end

    set name (basename $puml .puml)

    echo $puml

    curl --data-binary "@$puml" --url "$PLANTUML_HOST/png/0" > "$name.png"
    curl --data-binary "@$puml" --url "$PLANTUML_HOST/svg/0" > "$name.svg"
end
