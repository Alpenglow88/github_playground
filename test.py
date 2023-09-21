from github import Github

def main():
    g = Github('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')
    for repo in g.get_user().get_repos():
        print(repo.labels_url)
    # to see all the available attributes and methods
    print(dir(repo))

if __name__ == '__main__':
    main()