## Coalesce Blog

Here is the code and the raw articles for the coalesce blog.  


### File hierarchy

branch: **master**
- /articles/            - directory for categories
- /articles/<category>/ - location of markdown files for articles in category <category>
- /renderer/            - code for rendering `master` and committing to `gh-pages`

branch: **gh-pages**
- /articles/   - rendered articles
- /meta/       - metadata about articles
- /templates/  - page templates
- /js/         - javascript for pages
- /css/        - css for pages
- /index.html  - loading page
- /validate.sh - validation script to validate the rendered pages
- /scripts     - scripts used to validate the rendered pages


### Branch explanations

The `master` branch is where new html and articles are merged into.  The
`gh-pages` pages will be automatically generated with the rendering scripts.

### Data format

* All JSON responses will contain a `checksum` field with a unique
  representation of the build that the data is from.  This field will help
  clients know when their data is old and must be updated
