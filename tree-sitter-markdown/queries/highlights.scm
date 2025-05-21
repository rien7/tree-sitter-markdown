(atx_heading
  (atx_h1_marker) @punctuation.special
  [(inline) @text.title]?
) @text.title.h1
(#set! capture.final true)

(atx_heading
  (atx_h2_marker) @punctuation.special
  [(inline) @text.title]?
) @text.title.h2
(#set! capture.final true)

(atx_heading
  (atx_h3_marker) @punctuation.special
  [(inline) @text.title]?
) @text.title.h3
(#set! capture.final true)

(atx_heading
  (atx_h4_marker) @punctuation.special
  [(inline) @text.title]?
) @text.title.h4
(#set! capture.final true)

(atx_heading
  (atx_h5_marker) @punctuation.special
  [(inline) @text.title]?
) @text.title.h5
(#set! capture.final true)

(atx_heading
  (atx_h6_marker) @punctuation.special
  [(inline) @text.title]?
) @text.title.h6
(#set! capture.final true)

(setext_heading
  (paragraph) @text.title
  (setext_h1_underline) @punctuation.special
) @text.title.h1
(#set! capture.final true)

(setext_heading
  (paragraph) @text.title
  (setext_h2_underline) @punctuation.special
) @text.title.h2
(#set! capture.final true)

[
  (link_title)
  (indented_code_block)
  (fenced_code_block)
] @text.literal

[
  (fenced_code_block_delimiter)
] @punctuation.delimiter

(code_fence_content) @none

[
  (link_destination)
] @text.uri

[
  (link_label)
] @text.reference

[
  (list_marker_plus)
  (list_marker_minus)
  (list_marker_star)
  (list_marker_dot)
  (list_marker_parenthesis)
  (thematic_break)
] @punctuation.special

[
  (block_continuation)
  (block_quote_marker)
] @punctuation.special

[
  (backslash_escape)
] @string.escape

[
  (paragraph)
] @paragraph

[
  (inline)
] @inline

[
  (block_quote)
] @block_quote
