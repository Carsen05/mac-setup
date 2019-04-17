# Codebug Mac Computer Setup

### 1. Download Sublime Text
Sublime is a text editor. Sublime is to writing code like Microsoft Word is to writing essays. You will use this program to write and store your coding files.
  - Follow this [link](https://www.sublimetext.com/3) to download Sublime Text 3

### 2. Install Command Line Tools
The Command Line Tools gives your Mac terminal many commonly used tools that make your life as a programmer easier. 
  - Open your terminal and run `xcode-select --install` to install these tools

### 3. Set up your development environment
In this step, we are going to be copying some settings over and making sure all of the programs we just installed are working correctly. We’re also going to be creating the shortcut command “subl” that you’ll use to open all of your coding files in Sublime.
  - `git clone https://github.com/sarah-codebug/mac-setup`
  - `cd mac-setup`
  - `./install`

### 4. Make Sublime your preferred editor for git
  - Run this from the terminal `git config --global core.editor "subl -w"`

### 5. Make your first "Hello World" page!!