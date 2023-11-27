import {useRef} from "react"
import GalleryImage from "./GalleryImage";

function GalleryList({ galleryList,displayGallery,displayAlternateGallery}) {
  const steps= useRef(0);

  return (
    <>
    <div data-testid="galleryList" className="ItemList">

      {
      galleryList.map((image) => {
        return <GalleryImage
         key={image.id}
          image={image}
          steps={steps}
          displayGallery={displayGallery}
          displayAlternateGallery={displayAlternateGallery}/>;
      })
      }
    </div>
    <div>

    </div>
    </>
  );
}

export default GalleryList;
