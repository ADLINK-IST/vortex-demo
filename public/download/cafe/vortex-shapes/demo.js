controller.addPublication(CIRCLE, "BLUE",
			  policyFactory.Reliability().withBestEffort());


controller.addSubscription(SQUARE,
			   policyFactory.Reliability().withBestEffort());
