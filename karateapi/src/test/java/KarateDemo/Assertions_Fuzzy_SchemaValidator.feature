
@tag
Feature: Assertions
  I want to use this template for my feature file

  
  Scenario: Assertions Fuzzy Assertions
    Given url "https://conduit.productionready.io/api/articles?limit=10&offset=0"
    When method get
    And status 200
    And print response
    And match response.articles == '#[10]'
    And match response.articlesCount != 200
    And match response == {"articles":"#array", "articlesCount":"#number"}
  And match response.articles[0].createdAt contains "2022"
    And match response.articles[*].favoritesCount contains 297
     And match response.articles[*].favoritesCount !contains 1000
      And match response.articles[*].favoritesCount contains any [300, 297, 500]
     # And match response.articles[*].favoritesCount !contains 297
      And match response..image contains "https://api.realworld.io/images/demo-avatar.png"
      And match each response.articles ==
      """
      {
      
            "slug": "#string",
            "title": "#string",
            "tagList": "#array",
            "createdAt": "#ignore",
            "updatedAt": "#ignore",
            "favorited": "#boolean",
            "favoritesCount": "#number",
                  "author": {
        "username": "#string",
        "bio": "##string",
        "image": "#string",
        "following": "#boolean"
      }
      }
      """