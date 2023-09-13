@GET_album
Feature: Get Album Spotify

  Background:
    * url baseUrl
    * def basePath = "/v1/albums/"
    * def access_token = call read('../POST_access-token.feature')
    * def albumId = "4aawyAB9vmqN3uQ7FjRGTy"
    * header Authorization = "Bearer " + access_token.token


  Scenario: Lista album por ID com sucesso
    Given path basePath + albumId
    When method GET
    Then status 200
      And print $
      And match $response.album_type == "album"

