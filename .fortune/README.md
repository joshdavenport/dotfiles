# Good Read Quotes

Takes a goodreads quote by tag archive and turns it into a f

     python goodreadsquotes.py https://www.goodreads.com/quotes/tag/philosophy > goodreads-philosophy

# Generating fortune .dat files

Use the following command with a newline-and-%-character delimited plaintext file to be able to use it with fortune (i.e. `fortune ~/.fortune`)

    strfile -c % goodreads-philosophy goodreads-philosophy.dat