create-venv
===========

Create a fresh python virtualenv without having setuptools or pip, nor being root.

Example
-------

```bash
fred@atom:~/trucs $ ls
fred@atom:~/trucs $ curl -sL https://raw.github.com/fspot/create-venv/master/create_venv.sh | bash
> Downloading virtualenv.py...
> Creating and activating new virtualenv <venv>...
> Installing setuptools/easy_install in <venv>...
> Installing pip in <venv>...
> Cleaning...
Done.
fred@atom:~/trucs $ ls
venv
fred@atom:~/trucs $ source venv/bin/activate
(venv)fred@atom:~/trucs $ 
```
