Birkbeck Biocomputing II Skeleton Code
======================================

This provides some skeleton code for demonstrating how the three-layer
model works for the Biocomputing II project.

Most importantly, **it provides the required way in which files are
expected to be laid out in the GitHib submission**.

A good place to start would be to try this out. 

1. Create a file called `config.sh` using one of the `config_xxxx.sh`
files as a template. At Birkbeck, you should just need to do `cp
config_bbk.sh config.sh`. The values of `html` and `cgi`
are the locations where you need to install your HTML files and CGI
scripts.

2. Create a file called `cgi-biocomp2/config.py`. You can use
`cgi-biocomp2/config_demo.py` as a template. Change `cgiURL` to point
to the path used to access a CGI script in a URL (at Birkbeck,
something like `/cgi-bin/cgiwrap/ab123/` (where `ab123` is replaced by
your username).

3. Run the install script by typing `./install.sh`

You should now be able to point your browser to the URL of the
location in which you stored the HTML.

-----------------------------------------------------------------------

How to use this skeleton
------------------------

1. *One member of your team* must create a **private** repository
on your GitHub account.

2. Allow the other members of the team read/write access to the repository:

- Click `Settings` (at the top)
- Click `Manage access` (on the left)
- Click `Invite a collaborator`
- Add each of the members of your team

We will assume your GitHub username is `JohnSmith` and your repository
is called `BBKProject`. Take the following steps:

```
git clone git@github.com:AndrewCRMartin/biocomp2.git
cd biocomp2
git remote rm origin
git remote add origin git@github.com:JohnSmith/BBKProject.git
git push -u origin master
```

You have now created your own repository which is a copy of this
skeleton project and synchronized it with your own GitHub.

You can now all clone the repository to your own machines or unix
accounts and edit the code. Don't forget to commit and push your
changes back to GitHub regularly and remember to pull down other
people's changes.

-----------------------------------------------------------------------

The code is organized into three main directories:

- `createdb` This is where the code will live to parse the Genbank
  file and create the database

- `html` This is where the HTML files live. If there is an alternative
  web front end then this would be in an `html2` directory

- `cgi-biocomp2` This is where the CGI scripts and all the code for
  the different layers lives.

The `cgi-biocomp2` directory contains three sub-directories that
represent the three layers of code:

- `cgi-biocomp2/cgi` contains the CGI scripts. If there is an
  alternative web front end then this would be in an directory called
  `cgi-biocomp2/cgi2`

- `cgi-biocomp2/bl` contains the business layer code.

- `cgi-biocomp2/db` contains the database access layer code.

The `install.sh` script in the top directory is a demonstration script that will copy the files to HTML and cgi-bin directories. See the instructions above for using these on the server at Birkbeck.

