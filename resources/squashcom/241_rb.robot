# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
rb
	Given je suis dans un atelier
	When j'achète des composants
	And je les assemble
	Then j'ai un robot