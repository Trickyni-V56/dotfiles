#!/usr/bin/env bash
#scrapes a recipe from a blog and displays only the instructions
curl -sG "https://plainoldrecipe.com/recipe" -d "url=${1}" | pandoc -f html -t markdown
}
