.. StdConf documentation master file, created by
   sphinx-quickstart on Wed May 27 16:45:43 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

====
StdConf
====
Welcome to StdConf's documentation!
------------------------

.. image:: https://readthedocs.org/projects/stdconf/badge/?version=latest
   :target: https://stdconf.readthedocs.io/en/latest/?badge=latest
   :alt: Documentation Status

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   introduction

The following is a sample grammar.

.. describe:: productionlist

   This directive is used to enclose a group of productions. Each production is
   given on a single line and consists of a name, separated by a colon from the
   following definition. If the definition spans multiple lines, each
   continuation line must begin with a colon placed at the same column in the 
   first line.

   Blank lines are not allowed within ``productionlist`` directive arguments.

The following is an example taken from the Python Reference Manual.

.. productionlist::
   try_stmt: try1_stmt | try2_stmt
   try1_stmt: "try" ":" `suite`
            : ("except" [`expression` ["," `target`]] ":" `suite`)+
            : ["else" ":" `suite`]
            : ["finally" ":" `suite`]
   try2_stmt: "try" ":" `suite`
            : "finally" ":" `suite`

This is plain text.

.. py:function:: enumerate(sequence[, start=0])

Return an iterator that yields tuples of an index and an item of the "sequence".
(And so on.)

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
