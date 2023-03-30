import { useTranslation } from 'react-i18next';

function TranslateIfNeeded(text:string): string{
	const { t, i18n } = useTranslation();
    return text.startsWith("!t!") ? t(text.substring(3)) : text;
}

export default TranslateIfNeeded;