
from setuptools import setup, find_packages

setup(
    name="StdConf",
    version="0.0.1",
    packages=find_packages(),
    scripts=[],
    
    # Project uses reStructuredText, so ensure that the docutils get installed
    # or uploaded on the target machine.
    install_requires=["docutils>=0.16"],

    package_data={
        # If any package contains *.txt or *.rst files, include them:
        "": [ "*.txt", "*.rst" ]
    },

    # Metadata to display on PyPI
    author="Jose Fernando Lopez Fernandez",
    author_email="jflopezfernandez@gmail.com",
    description="Configuration and Command-line Args Standardization",
    keywords="configuration standards command-line args",
    url="https://github.com/jflopezfernandez/Standard-Config",
    project_urls={
        "Bug Tracker": "https://github.com/jflopezfernandez/Standard-Config/issues",
        "Documentation": "https://stdconf.readthedocs.io/en/latest/",
        "Source Code": "https://github.com/jflopezfernandez/Standard-Config"
    }
)
