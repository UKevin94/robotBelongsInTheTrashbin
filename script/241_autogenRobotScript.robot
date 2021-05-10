# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
autogenRobotScript
	Given I have an apple
	When I add to other apples
	Then I have three apple in my basket