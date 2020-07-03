JS Evaluation Workflow for [Alfred 3](http://www.alfredapp.com)
==============================

You can evaluate JavaScript right within your Alfred.

**[DOWNLOAD](https://github.com/VitaliyR/alfred-js-evaluate-workflow/releases)**

![Workflow Screenshot](https://cloud.githubusercontent.com/assets/2149612/25237614/d3f18c38-25f3-11e7-9b5f-2badb7cced1b.png)

## Setup

### Interpreter

This workflow uses **NodeJS** for evaluating your JavaScript, so you need to pass path for your NodeJS interpreter.

* Add this workflow to your workflows
* Get path to your NodeJS executable and copy it to clipboard via running `which node | pbcopy`
* Open **Alfred Settings**, navigate to **Workflows** tab, find **Evaluate JavaScript** workflow and press **[x]** button
* In the right column of opened window *(Workflow Environment Variables)* paste path to your NodeJS interpreter into variable named **interpreter**.
Create it if it doesn't exists.

## Usage

`js javascript_code`

## License

MIT © [Vitaliy Ribachenko](http://ribachenko.com)
