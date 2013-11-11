# -*- coding: utf-8 -*-
# <nbformat>3.0</nbformat>

# <codecell>

import praw
import pandas as pd

# <codecell>

user_agent = ("Project for class 0.01 by Jay Say"
              "https://github.com/jaysayre/") # Reddit API encourages having a descriptive name, preferably with /u/..
r = praw.Reddit(user_agent=user_agent)
api_call_limit = 10 # Reddit API limits to 1000
subreddit = r.get_subreddit('explainlikeimfive', fetch=True)

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

# <codecell>

def get_comments(postid):
    submission = r.get_submission(submission_id=postid)
    #flat_comments = praw.helpers.flatten_tree(submission.comments) # Flattens comments and replies 
    
    for i in range(0, 5):
        try:
            print '\nComment: ""' + submission.comments[i].body + '""'
        except:
            pass
        print "Submission Id:", submission.comments[i].id
        print "Score:", submission.comments[i].score
        print "Author:", submission.comments[i].author
        #This part can take a while... may be wiser to fetch in seperate step
        try:
            print "Author Karma:", submission.comments[i].author.comment_karma
        except AttributeError: 
            pass

# <codecell>

topids = list(eli5top['id'])

#for i in range(len(topids)):
#    topids[i] = str(topids[i])
    
get_comments(topids[2])
    

# <codecell>


