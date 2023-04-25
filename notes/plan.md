# db

*if string preceeded by $# then translate*
(json)
- it_project
  - id : int
  - name : string
  - description : string
  - imageDir : string
  - image : string
  - thumbnail : string
  - category_id : int
  - tools_id : int[]
  - github : string
  - active : bool
  - date : string
  - place_id : int (eg school/work)
  - person_id : int (eg dad)
- category
  - id : int
  - name : string
  - description : string
  - thumbnail : string
  - image : string
- tool
  - id : int
  - name : string
  - description : string
  - link : string
- person
  - id : int
  - firstname : string
  - lastname : string
  - description : string
  - thumbnail : string
  - image : string
  - relation : string
  - workplace_id : string
  - birthdate : string
  - nationality : string
  - email : string
  - phone : string
  - address_id : int
- address
  - id : int
  - name : string
  - street : string
  - addition : string
  - zip : int
  - city : string
  - country : string
- workplace
  - id : int
  - name : string
  - description : string
  - link : string
  - address_id : int

*oknewplan*

- personalinfo
  - name
  - birthdate
  - nationalities[]
  - birthplace
  - _experience[]
  - knowledge[]
    - _generalskills
    - _coding
    - _software
    - _languages
    - _art
  - _projects[]
  - _referencecontacts[]

- _referencecontact_
  - @id
  - name
  - description
  - email
  - phone

- _category_
  - @id
  - name
  - description
  - image
  - thumbnail
  - link?

- _experienceitem_
  - @id
  - name
  - description
  - _categoryid
  - image
  - thumbnail
  - yearfrom
  - yearto
  - link
  - documents[]?
  - _referencecontact[]?

- _knowledgeitem_
  - @id
  - name
  - description
  - _categoryid
  - skillpercent
  - proficiency
  - image
  - thumbnail
  - timeknown?
  - link?

- _projectitem_
  - @id
  - name
  - description
  - timefrom
  - timeto
  - _knowledgeid[]
  - category
  - _link?
  - image[]
  - thumbnail

- projects_categories
  - web
  - game
  - seo
  - teaching

- informatik
  - web_front
  - web_back
  - db
  - office
- kunst
  - musik
  - zeichnen etc
- pädagogik
  - aushilfe
  - hort
  - einzelunterricht
- gesundheit
  - sport
  - natur
  - kochen
- allgemein
  - persönlich
  - sprachen
  - schulwissen

- projects
  - it
    - inteco
      - SCSS
      - affolter
      - bootstrapReplaceOrCreate
      - fillUserCountries
      - probeIPA_altersüberprüfung
      - produzenten
      - translate
      - SEO
      - ageVerification
      - clearImageCache
      - mariabuehler
      - probeIPA_produzenten
      - selenium
      - updatedNodesExport 
      - SQL
      - dmviniDocker
      - emails
      - firstwineAwards
      - googleECommerce
      - i18n
      - logConfigurable
      - metaTags
      - passwordReset
      - raspi
      - shareButtons
      - shopSettingsPage
      - tasteProfile
    - fernesto vargas
      - webscraping
    - meins
      - portfolio
      - python finance
      - rocketgame unity
      - dungeongame unity 
      - dungeongame python
      - textgame python
      - minecraft python
      - website dad
      - website mom
      - 
      - kriztunez
      - shop react
  - art
    - kusudama
    - origami
    - graffiti
    - drawing
    - painting
    - sewing
    - woodwork
    - mosaic
    - guitar
    - bass
    - drums
    - ableton
    - fl studio
  - other
    - bike
    - cevi
    - camping
    - hiking
    - cooking

*skillfilter options*

- type
- category
- subCategory
- hobby
- applicationType_id

*projectfilter options*



- Promises / async await
- angular state
- atomizable components
- create plan: which components / services will the webapp have?
  - lists of components
  - filter
  - button
  - infobox