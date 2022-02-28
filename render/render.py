from markdown import markdown as md
from os import path
import sys

args = sys.argv[1:]

def convert_to_html(file_name):
    dir = path.dirname(__file__)
    base_html = open(path.join(dir, "render.html"), "r").read()
    file_text = open(file_name, "r").read()
    output = base_html.replace("<!-- content -->", md(file_text))
    return output

def main():
    if len(args) == 0:
        print("No arguments given")
        return
    elif len(args) == 1:
        # render given md file to html
        file_name = path.splitext(args[0])[0]

        html_file = path.join(path.dirname(args[0]), file_name + ".html")
        html_text = convert_to_html(args[0])

        open(html_file, "w").write(html_text)
        print("Rendered file: " + html_file)

    else:
        print("Too many arguments")

main()