from markdown import markdown as md
from os import path
import sys

args = sys.argv[1:]

def main():
    if len(args) == 0:
        print("No arguments given")
        return
    elif len(args) == 1:
        # render given md file to html
        file_text = open(args[0], "r").read()
        file_name = path.splitext(args[0])[0]

        html_file = path.join(path.dirname(args[0]), file_name + ".html")
        html_text = md(file_text)

        open(html_file, "w").write(html_text)
        print("Rendered file: " + html_file)

    else:
        print("Too many arguments")

main()