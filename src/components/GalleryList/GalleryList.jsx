import {useRef} from "react"
import GalleryImage from "./GalleryImage";

function GalleryList({ galleryList,displayGallery,displayAlternateGallery,alternateGalleryStatus}) {
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
          displayAlternateGallery={displayAlternateGallery}
          alternateGalleryStatus={alternateGalleryStatus}/>;
      })
      }
    </div>
    <div>

    </div>
    </>
  );
}

export default GalleryList;
