# -*- coding: utf-8 -*-
# <nbformat>3.0</nbformat>

# <codecell>

import praw
import pandas as pd
#from __future__ import print_function
from alchemyapi import AlchemyAPI
import json
import os

# <codecell>

user_agent = ("Project for class 0.01" #Should probably link later
              "/u/Valedra"
              "https://github.com/jaysayre/intelligentdolphins") # Reddit API encourages having a descriptive name, preferably with /u/..
r = praw.Reddit(user_agent=user_agent)
api_call_limit = 10 # Reddit API limits to 1000
subreddit = r.get_subreddit('explainlikeimfive', fetch=True)

# <markdowncell>

# The API is limited to 1000 calls at a time. We need to figure out how to get the "next" 1000.

# <codecell>


sub = subreddit.get_top_from_all(limit=api_call_limit)

# Fancy list comprehensions don't seem to work here, unfortunately, without recalling line above
ids = []
title = []
upvts = []
downvts = []
authors = []
athrkarma = []
comments = []
score = []
for post in sub:
    if post.distinguished == None: #Removes moderator comments, which we presumably don't want.
        ids.append(post.id)
        title.append(post.title)
        upvts.append(post.ups)
        downvts.append(post.downs)
        authors.append(str(post.author))
        comments.append(post.num_comments)
        score.append(post.score)
        #This part can take a while... may be wiser to fetch in seperate step
        #try:
        #    athrkarma.append(post.author.comment_karma)
        #except AttributeError:
        #    athrkarma.append(0)

# <codecell>

eli5top = pd.DataFrame({'id': ids, 'post_title': title, 'upvotes': upvts, 'downvts':downvts, 'comments':comments, 'score':score, 'authors':authors})#, 'karma':athrkarma})#

# <markdowncell>

# The "n" in the following function is the number of top level comments you want to get. By default, reddit only shows the first 200, you can expand it (look at the docs for praw). 

# <codecell>

def get_comments(postid, n=100):
    submission = r.get_submission(submission_id=postid)
    # Flattens comments and replies 
    #flat_comments = praw.helpers.flatten_tree(submission.comments) 
    
    for i in range(0, n):
        try:
            #print ' \n Comment: ""' + submission.comments[i].body + '""'
            #print "Submission Id:", submission.comments[i].id
            #print "Score:", submission.comments[i].score
            #print "Author:", submission.comments[i].author
            #This part can take a while... may be wiser to fetch in seperate step
            #print "Author Karma:", submission.comments[i].author.comment_karma
            print ('what the hell is going on????')
        except:
            pass
        

# <codecell>

topids = list(eli5top['id'])

#for i in range(len(topids)):
#    topids[i] = str(topids[i])
    
comment = get_comments(topids[2], 100)

comment

# <codecell>

# Make sure to use your own API key
apikey = "dcac82649daaa2627ee783b25779cfaed4af0067" #Jay's key
#apikey = "e945cef59338f9e8e7bc962badde170e623fb7e5" #Basti's key
with open('api_key.txt', 'w') as keytxt:
    keytxt.write(apikey)
    
# Create the AlchemyAPI object 
alchemyapi = AlchemyAPI()


response = alchemyapi.entities('text', comment, { 'sentiment':1 })

if response['status'] == 'OK':
    #Entity Extraction
	print('## Entities ##')
	for entity in response['entities']:
		print('text: ', entity['text'].encode('utf-8'))
		print('type: ', entity['type'])
		print('relevance: ', entity['relevance'])
		print('sentiment: ', entity['sentiment']['type'])
		if 'score' in entity['sentiment']:
			print('sentiment score: ' + entity['sentiment']['score']) 
else:
	print('Error in entity extraction call: ', response['statusInfo'])
    

# <codecell>

#Keyword Extraction

response = alchemyapi.keywords('text',comment, { 'sentiment':1 })

if response['status'] == 'OK':
	print('## Keywords ##')
	for keyword in response['keywords']:
		print('text: ', keyword['text'].encode('utf-8'))
		print('relevance: ', keyword['relevance'])
		print('sentiment: ', keyword['sentiment']['type']) 
		if 'score' in keyword['sentiment']:
			print('sentiment score: ' + keyword['sentiment']['score'])

else:
	print('Error in keyword extaction call: ', response['statusInfo'])

# <codecell>

# Concept Tagging

response = alchemyapi.concepts('text',comment)

if response['status'] == 'OK':
	print('\n## Concepts ##')
	for concept in response['concepts']:
		print('text: ', concept['text'])
		print('relevance: ', concept['relevance'])
else:
	print('Error in concept tagging call: ', response['statusInfo'])

# <codecell>

# Relation Extraction

response = alchemyapi.relations('text', comment)

if response['status'] == 'OK':
	print('\n ## Relations ##')
	for relation in response['relations']:
		if 'subject' in relation:
			print('Subject: ', relation['subject']['text'].encode('utf-8'))
		if 'action' in relation:
			print('Action: ', relation['action']['text'].encode('utf-8'))
		if 'object' in relation:
			print('Object: ', relation['object']['text'].encode('utf-8'))
		
else:
	print('Error in relation extaction call: ', response['statusInfo'])

# <codecell>

# Text Categorization
response = alchemyapi.category('text', comment)

if response['status'] == 'OK':
	print('\n ## Category ##')
	print('text: ', response['category'])
	print('score: ', response['score'])
else:
	print('Error in text categorization call: ', response['statusInfo'])

# <codecell>

# Language Detection
response = alchemyapi.language('text',comment)

if response['status'] == 'OK':
	print('\n## Language ##')
	print('language: ', response['language'])
else:
	print('Error in language detection call: ', response['statusInfo'])

# <codecell>

# Removes api key so we all aren't pushing different keys
os.remove('api_key.txt')

# <codecell>


