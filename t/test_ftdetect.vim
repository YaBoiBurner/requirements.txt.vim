filetype plugin on
runtime! plugin/requirements.vim

describe 'enable: requirements#matched_filename()'
    it 'to enable file type detection: basic filename'
        Expect requirements#matched_filename('requirements.txt') to_be_true
        Expect requirements#matched_filename('requires.txt') to_be_true
    end

    it 'to enable file type detection: pip-tools filename'
        Expect requirements#matched_filename('requirements.in') to_be_true
        Expect requirements#matched_filename('requires.in') to_be_true
    end

    it 'to enable file type detection: directory structure'
        Expect requirements#matched_filename('requirements/dev.txt') to_be_true
        Expect requirements#matched_filename('requires/tests.in') to_be_true
    end
end

describe 'disable: requirements#matched_filename()'
    it 'to enable file type detection: basic filename'
        Expect requirements#matched_filename('requirements.text') to_be_false
    end

    it 'to enable file type detection: pip-tools filename'
        Expect requirements#matched_filename('requirements.ini') to_be_false
    end

    it 'to enable file type detection: directory structure'
        Expect requirements#matched_filename('require/dev.txt') to_be_false
    end
end

describe 'g:requirements#detect_filename_pattern'
    it 'use g:requirements#detect_filename_pattern'
        Expect requirements#matched_filename('freeze.txt') to_be_false
        let g:requirements#detect_filename_pattern = 'freeze'
        Expect requirements#matched_filename('freeze.txt') to_be_true
    end
end

" vim: et sw=4 ts=4 sts=4:
