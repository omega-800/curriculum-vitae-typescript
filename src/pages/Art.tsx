import React from 'react';
import Carousel from '../components/Carousel';
import Header from '../components/Header';
import { useTranslation } from 'react-i18next';

function Art(){
    const { t, i18n } = useTranslation();
    const origamiSlideImages = [
        { src: './content/kunst/origami/1.jpg' },
        { src: 'content/kunst/origami/2.jpg' },
        { src: 'content/kunst/origami/3.jpg' },
        { src: 'content/kunst/origami/4.jpg' },
        { src: 'content/kunst/origami/5.jpg' },
        { src: 'content/kunst/origami/6.jpg' },
        { src: 'content/kunst/origami/7.jpg' },
        { src: 'content/kunst/origami/8.jpg' },
        { src: 'content/kunst/origami/9.jpg' },
        { src: 'content/kunst/origami/10.jpg' },
        { src: 'content/kunst/origami/11.jpg' },
        { src: 'content/kunst/origami/12.jpg' },
        { src: 'content/kunst/origami/13.jpg' },
        { src: 'content/kunst/origami/14.jpg' }
    ];
    const paintSlideImages = [
        { src: 'content/kunst/paint/1.jpg' },
        { src: 'content/kunst/paint/2.jpg' },
        { src: 'content/kunst/paint/3.jpg' },
        { src: 'content/kunst/paint/4_1.jpg' },
        { src: 'content/kunst/paint/4.jpg' },
        { src: 'content/kunst/paint/5.jpg' },
        { src: 'content/kunst/paint/6.jpg' },
        { src: 'content/kunst/paint/7.jpg' },
        { src: 'content/kunst/paint/8.jpg' },
        { src: 'content/kunst/paint/9.jpg' },
        { src: 'content/kunst/paint/10.jpg' },
        { src: 'content/kunst/paint/11.jpg' }
    ];
    const spraySlideImages = [
        { src: 'content/kunst/spray/1.jpg' },
        { src: 'content/kunst/spray/2.jpg' },
        { src: 'content/kunst/spray/3.jpg' },
        { src: 'content/kunst/spray/4.jpg' },
        { src: 'content/kunst/spray/5.jpg' },
        { src: 'content/kunst/spray/6.jpg' },
        { src: 'content/kunst/spray/7.jpg' },
        { src: 'content/kunst/spray/8.jpg' },
        { src: 'content/kunst/spray/9.jpg' },
        { src: 'content/kunst/spray/10.jpg' },
        { src: 'content/kunst/spray/11.jpg' },
        { src: 'content/kunst/spray/12.jpg' },
        { src: 'content/kunst/spray/13.jpg' },
        { src: 'content/kunst/spray/14.jpg' },
        { src: 'content/kunst/spray/15.jpg' },
        { src: 'content/kunst/spray/16.jpg' },
        { src: 'content/kunst/spray/17.jpg' },
        { src: 'content/kunst/spray/18.jpg' },
        { src: 'content/kunst/spray/19.jpg' },
        { src: 'content/kunst/spray/20.jpg' },
        { src: 'content/kunst/spray/21.jpg' },
        { src: 'content/kunst/spray/22.jpg' },
        { src: 'content/kunst/spray/23.jpg' },
        { src: 'content/kunst/spray/24.jpg' },
        { src: 'content/kunst/spray/25.jpg' },
        { src: 'content/kunst/spray/26.jpg' }
    ];
    const otherSlideImages = [
        { src: 'content/kunst/other/1.jpg' },
        { src: 'content/kunst/other/2.jpg' },
        { src: 'content/kunst/other/3.jpg' },
        { src: 'content/kunst/other/4.jpg' },
        { src: 'content/kunst/other/5.jpg' },
        { src: 'content/kunst/other/6.jpg' },
        { src: 'content/kunst/other/7.jpg' },
        { src: 'content/kunst/other/8.jpg' },
        { src: 'content/kunst/other/9.jpg' }
    ];
    return(
		<>
		<Header
            title={t('art_title')}
            text={t('art_description')}
        />
        <div className="art">
            <div className="art_origami section">
                <div className="section_title"><h2>{t('art_origami_title')}</h2></div>
                <Carousel 
                    title={t('art_origami_description')}
                    slides={origamiSlideImages}
                />
            </div>
            <div className="art_paint section">
                <div className="section_title"><h2>{t('art_drawings_title')}</h2></div>
                <Carousel
                    title={t('art_drawings_description')}
                    slides={paintSlideImages}
                />
            </div>
            <div className="art_spray section">
                <div className="section_title"><h2>{t('art_spraypaint_title')}</h2></div>
                <Carousel
                    title={t('art_spraypaint_description')}
                    slides={spraySlideImages}
                />
            </div>
            <div className="art_other section">
                <div className="section_title"><h2>{t('art_other_title')}</h2></div>
                <Carousel
                    title={t('art_other_description')}
                    slides={otherSlideImages}
                />
            </div>
        </div>
        </>
    )
}

export default Art;