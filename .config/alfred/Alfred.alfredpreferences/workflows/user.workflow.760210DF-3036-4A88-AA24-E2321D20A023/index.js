'use strict';

const alfy = require('alfy');
const mdnApiBase = 'https://wiki.developer.mozilla.org/api/v1/search/en-US';
const mdnDocsBase = 'https://developer.mozilla.org/en-US/docs/';

https: alfy.fetch(`${mdnApiBase}?q=${alfy.input}`, { transform: ({ documents }) => documents }).then(results => {
    const items = (results || []).map(result => {
        const { title, excerpt, slug } = result;
        const subtitle = stripHtml(excerpt);
        const url = `${mdnDocsBase}${slug}`;

        return {
            title,
            subtitle,
            autoComplete: title,
            arg: url,
            quicklookurl: url
        };
    });

    // No results
    if (items.length === 0 && false) {
        const url = `${mdnApiBase}?q=${alfy.input}`;

        items.push({
            title: `Show all results for '${alfy.input}'`,
            arg: url,
            quicklookurl: url
        });
    }

    alfy.output(items);
});

function stripHtml(text) {
    return text.replace(/<[^>]+>/g, '');
}
