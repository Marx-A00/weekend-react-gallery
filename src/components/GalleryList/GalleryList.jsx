import {useRef} from "react"
import GalleryImage from "./GalleryImage";

function GalleryList({ galleryList,displayGallery }) {
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
          displayGallery={displayGallery}/>;
      })
      }
    </div>
    </>
  );
}

export default GalleryList;
