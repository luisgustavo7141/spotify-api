@POST_access_token
Feature: Spotify Token - Funcionalidade que irá gerar o access token

  Background:
    * url baseUrlToken
    * header Content-Type = 'application/x-www-form-urlencoded'

  Scenario: Gera access token com sucesso
    Given path pathAccessToken
      And form field grant_type = 'client_credentials'
      And form field client_id = client_id
      And form field client_secret = client_secret
    When method POST
    Then status 200
      And def token = $.access_token