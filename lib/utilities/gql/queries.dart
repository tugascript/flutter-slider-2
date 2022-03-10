const kGqlCurrentUser = r'''
  query CurrentUser {
    me {
      id
      username
      picture
    }
  }
''';

const kGqlGetImages = r'''
  query GetImages($first: Int!, $after: String) {
    getImages(first: $first, after: $after) {
      edges {
        node {
          id
          url
        }
      }
      pageInfo {
        endCursor
        hasNextPage
      }
    } 
  }
''';
