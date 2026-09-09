# 55percent.org

## Congratulations on your home

We have reviewed your property and determined that **55% of it belongs to us**.

Please remain calm. This is a perfectly reasonable allocation, supported by historical reasons, official-looking graphics, and an administrative process that does not require your consent.

You may continue living in the remaining 45%. We trust you will use it responsibly.

## What is this?

55percent.org is a small satirical interactive experience about what happens when maps, borders, and ownership claims are presented as tidy diagrams instead of lived realities.

It asks the visitor to imagine receiving a cheerful notice that most of their home has been reallocated. The language is deliberately polite. The arithmetic is deliberately simple. The discomfort is the feature.

The house is fictional. The allocation is fictional. The feeling of being told that something is yours only until somebody else says otherwise is not difficult to recognize.

## How to use the site

1. Accept the allocation with appropriate gratitude.
2. Raise an objection.
3. Discover that your objection has been carefully noted.
4. Submit the obviously fake address.
5. Learn that your address was never required.
6. Consider why a division can look harmless when it is drawn on a map, but invasive when it is drawn across your home.

## A necessary disclaimer from the Department of Analogies

This is an analogy, not a complete history lesson. No single house, percentage, animation, or website can contain the full history of a conflict or the experiences of the people who have lived through it.

The point is not that the analogy is perfect. The point is to make abstraction feel less comfortable—and then encourage you to read, listen, challenge the comparison, and ask whose consent mattered.

You are invited to challenge this analogy. You are also invited to notice how quickly that invitation can sound more generous than actual consent.

## Privacy and data

The address field is a theatrical prop. It is pre-filled with `123 Your Street`, and the form is handled entirely in the browser. No address, nationality, name, email, or other personal information is requested or transmitted.

The site does not need to know who you are in order to make its point. It has already allocated 55%.

## Technical details

This is a dependency-free static single-page site built with:

- HTML
- CSS
- Vanilla JavaScript
- One inline SVG allocation illustration

There is no backend, analytics, form submission, or database. The external history link is provided for further reading, not as a substitute for it.

## Local development

Open `index.html` in a browser, or serve the directory with any static web server:

```powershell
python -m http.server 8000
```

Then visit `http://localhost:8000`.

## Deployment

The production site is served by nginx on the VPS. The repository is the source of truth; deployment is performed through Git rather than copying individual files:

```powershell
.\deploy-55percent.ps1
```

The script pushes `main` to GitHub, fetches the latest commit on the VPS, resets the web root to that commit, validates nginx, and reloads it.

## License

Unless otherwise stated, use, remix, and redistribute the site as you see fit. Please submit all objections in writing. They will be noted.
