# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
robotScript
	Given I have an apple
	When I add another one in the basket
	Then I have two apples