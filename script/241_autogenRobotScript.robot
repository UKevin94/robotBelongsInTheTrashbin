# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource
Library     squash_tf.TFParamService

*** Test Cases ***
autogenRobotScript
	Given I have an apple
	When I add to other apples
	Then I have three apple in my basket

*** Keywords ***
    Given I have an apple
        Should Be Equal              bla        bla

    When I add to other apples
        Should Be Equal              blo        blo

    Then I have three apple in my basket
        Should Be Equal              bli        bli