#! /usr/local/bin/awk -f
awk '
    // {
        ++part;
        if (output_file) close(output_file);
        output_file=snprintf("forms.md", part)
    }
    {print >file}
'