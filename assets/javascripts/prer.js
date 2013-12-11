$(function () {
  if (typeof jsToolBar != 'undefined') {
    // pre with code class ruby
    jsToolBar.prototype.elements.prer = {
            type: 'button',
            title: 'Ruby example',
            fn: {
                    wiki: function() { this.encloseLineSelection('<pre><code class="ruby">\n', '\n</code></pre>') }
            }
    }

    // redraw existing toolbar
    wikiToolbar.draw();
  }
});
