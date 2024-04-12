enum MovieListType {
  popular('popular'),
  topRated('top_rated'),
  upcoming('upcoming');

  const MovieListType(this.backendIdentifier);

  final String backendIdentifier;
}
