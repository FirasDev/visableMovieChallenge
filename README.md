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