import React, {useState} from 'react'
import 'ckeditor5-custom-build';
import { CKEditor } from "@ckeditor/ckeditor5-react";

const Ckeditor5 = ({ name, value }) => {
  const [input, setInput] = useState(value || "")

  const editorConfiguration = {
    plugin: {

    },
    toolbar: {
      items: [
        "heading",
        "fontSize",
        "|",
        "bold",
        "italic",
        "|",
        "link",
        "|",
        "alignment",
        "bulletedList",
        "numberedList",
        "|",
        "fontColor",
        "fontBackgroundColor",
        "|",
        "redo",
        "undo",
      ],
    },
  };
  return (
    <>
      <div className="App mb-3">
        <CKEditor
          editor={ClassicEditor}
          config={editorConfiguration}
          data={value}
          onReady={(editor) => {
            // You can store the "editor" and use when it is needed.
          }}
          onChange={(event, editor) => {
            const data = editor.getData();
            setInput(data);
          }}
          onBlur={(event, editor) => {
          }}
          onFocus={(event, editor) => {
          }}
        />
        <input type="hidden" name={name} value={input} />
      </div>
    </>
  );
}

export default Ckeditor5
