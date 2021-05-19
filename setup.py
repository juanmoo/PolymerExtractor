import os
from setuptools import setup, find_packages

__version__ = None

src_dir = os.path.abspath(os.path.dirname(__file__))
version_file = os.path.join(src_dir, 'medtrialextractor', '_version.py')

with open(version_file, encoding='utf-8') as fd:
    exec(fd.read())

with open('README.md', encoding='utf-8') as f:
    long_description = f.read()

setup(
    name='medtrialextractor',
    author="Jiang Guo, Santiago Ibanez, Juan Ortiz",
    description='Chemical Reaction Extraction from Literature',
    long_description=long_description,
    long_description_content_type='text/markdown',
    version=__version__,
    license='MIT',
    packages=find_packages(),
    python_requires='>=3.8.8',
    install_requires=[
        'numpy==1.20.2',
        'seqeval==1.2.2',
        'torch==1.8.1',
        'tqdm==4.60.0',
        'transformers==4.6.0',
        'beautifulsoup4',
        'spacy',
        'pandas'
    ],
    keywords=[
        'information extraction',
        'reaction extraction',
        'natural language processing',
        'pre-training'
    ]
)
