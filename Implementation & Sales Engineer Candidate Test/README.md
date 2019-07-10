## Implementation & Sales Engineer Candidate Test

The integration should take the data, which in this case would be in the JSON format and use the Slack API to post these messages automatically to slack in channel depending on which country was selected in creating the opportunity.  e.g. "country": "UK" then we would post in the #sales-UK channel. Furthermore, we would only need to post certain data from the JSON:

Opportunity Name - Account Name

Close date - Amount

Type - Owner

- This integration will help the sales reps be notified of new opportunities and will be really useful for them as they will only be told of the opportunities relevant to them.

# This diagram shows a very basic flow of the data
Here is a diagram that shows the flow of data, we Tray will be configuring this all for your sales reps so whenever new opportunities arise in their area (the UK, US and EU) they will be notified in the Slack channel relevant.

![tray](https://user-images.githubusercontent.com/43011172/60909790-0d551b00-a277-11e9-97a9-6fc4cdf260ca.png)

Configuration:
- make sure the form of the post request is ``application/json``
- enable webhooks, go to the settings on your apps page and enable it.
- create the channels yourself so that you can place the relevant UK, US and  EU teams into their respective channels.
- we need to authorise webhooks for each channel so you only have to do it only once for each team/channel.

Questions you might have?
- How do we get the right data?

  We parse through the JSON to get the relevant data.
- How does it get formatted?

  Slack has great formatting tools for JSON which is really helpful, making the data look more presentable.
- How does the slack API post a message into the right channel?

  When parsing through the data the channel it will be posted in will be determined by this data part of the post request. "country": "UK"

- How the data could be mapped from the input to the Slack API?
  The selected data that we have is given to the Slack API when we call it, most likely it will involve using a pull request, which we can set up in a way so when the Sales rep makes the initial pull request we can call the Slack API as well.

# Reflection

- Overall I found this task to be a bit more challenging at first, however I came to really enjoy it because I found the flow the implementation really interesting, its a task that I would have liked to have done practically, set it up and write some code for it, to help further my understanding of how the integration can be built.

- Finally, I found it quite fun working as if I was going to present this to a client, I really like the idea of working with clients and feel it is an area in which I will succeed in.
