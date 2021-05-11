# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
bddStyleScript
	Given I have an apple
	When I add two other apples
	Then I have three apples in my basket