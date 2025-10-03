#!/bin/bash
# Script to create a new chapter notebook

if [ $# -ne 2 ]; then
    echo "Usage: $0 <CHAPTER_ID> <CHAPTER_TITLE>"
    echo "Example: $0 BA1A 'Compute the Number of Times a Pattern Appears in a Text'"
    exit 1
fi

CHAPTER_ID=$1
CHAPTER_TITLE=$2
NOTEBOOK_PATH="notebooks/${CHAPTER_ID}.ipynb"

# Create notebook template
cat > "$NOTEBOOK_PATH" << EOF
{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Chapter $CHAPTER_ID: $CHAPTER_TITLE\n",
    "\n",
    "## Problem Statement and Biological Context\n",
    "\n",
    "[Insert exact Rosalind problem statement here]\n",
    "\n",
    "### Biological Relevance\n",
    "[Explain why this problem matters in bioinformatics]\n",
    "\n",
    "## Mathematical Foundation\n",
    "\n",
    "[Mathematical treatment with LaTeX]\n",
    "\n",
    "## Reference Implementation\n",
    "\n",
    "[Production-quality Python code]\n",
    "\n",
    "## Interactive Exploration\n",
    "\n",
    "[ipywidgets for parameter exploration]\n",
    "\n",
    "## Testing and Validation\n",
    "\n",
    "[Comprehensive testing]\n",
    "\n",
    "## Complexity Analysis\n",
    "\n",
    "[Performance analysis]"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "name": "python",
   "version": "3.12.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
