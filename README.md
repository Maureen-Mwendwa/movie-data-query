**Movie Database Query README**

This README is intended to guide users through the purpose, execution, and outcome of a specific SQL query designed to extract and sort movie data from the movie-data database. The primary goal is to retrieve and list movies along with their genres and release dates in descending order based on their release date. A key aspect of this query is the use of the **STR_TO_DATE** function, which converts the release date from a string format to a date format, enabling accurate date-based sorting.

![select-all-output](https://github.com/Maureen-Mwendwa/movie-data-query/assets/149548409/8ddf688b-e756-4ac4-a3d4-8939ad1dd915)

![Order-by-Output](https://github.com/Maureen-Mwendwa/movie-data-query/assets/149548409/0fdac55a-b9fb-4e2f-8739-c8bfa97d7d7f)

The STR_TO_DATE function is essential in this query because the ReleaseDate column stores dates as strings in the format 'MM/DD/YYYY'. SQL does not inherently recognize these strings as dates, which means sorting them without conversion would yield incorrect results (e.g., '12/31/2015' would incorrectly precede '01/01/2016' in simple lexicographical order). By using **STR_TO_DATE(ReleaseDate, '%m/%d/%Y')**, we convert these strings into actual date objects that SQL can correctly sort.
