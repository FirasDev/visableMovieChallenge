# visableMovieChallenge

## App Structure

```
├── app
├── features
│   ├── movies
│   └── ...
```

## Running Code Generation

To run code generation

```sh
$ dart run build_runner build -d
```

## Api Configuration
To run the api add a .env file in root with 2 parameters
```
TMDB_API=API_KEY_HERE
```
```
TMDB_ACCESS_TOKEN=ACCESS_TOKEN_HERE
```

## Task description

You are tasked with building a mobile application using Flutter that allows users to search for 
movies using a public API and apply filters to refine their search results. The application should 
focus on clean architecture, reusable code components, and comprehensive unit tests.
Requirements:
1. **API Integration**: Utilize the TMDB (The Movie Database) API 
(https://www.themoviedb.org/documentation/api) to fetch movie data. You should implement at 
least two API endpoints: one for searching movies and another for fetching movie details.
 
2. **Search Functionality**: Implement a search feature that allows users to search for movies 
by their title. The search should be performed dynamically as the user types, providing instant 
feedback.

3. **Filtering**: As a bonus feature, implement filtering options to allow users to refine their 
search results. At a minimum, include filtering options such as genre, release year, and rating. 
You may choose to implement additional filters if desired.

4. **Documentation**: Provide clear and concise documentation, including a README file 
outlining the project structure, architectural decisions, how to run the application locally, and any 
additional instructions for reviewers.

Submission Guidelines:

- Implement the mobile application according to the specified requirements.
- Include detailed documentation in the form of a README file.
- Write unit tests to validate the functionality of the application.
- Commit your code submit the link of your github repository.

Evaluation Criteria:

- Adherence to Requirements: Does the application meet all specified requirements?
- Code Quality: Is the code well-structured, readable, and maintainable?
- Architecture: Does the application follow a clean architecture pattern, promoting separation of 
concerns and scalability?

- Reusability: Are components appropriately encapsulated and reusable?
- Documentation: Is the documentation comprehensive and easy to follow?
Note: You are free to use any additional packages or libraries that you deem necessary for 
completing the challenge. However, make sure to justify your choices and consider the impact 
on code quality and performance.
