import GalleryImage from "./GalleryImage";

function GalleryList({ galleryList,displayGallery }) {
  return (
    <>
    <div data-testid="galleryList" className="ItemList">
      {
      galleryList.map((image) => {
        return <GalleryImage
         key={image.id}
          image={image}
          displayGallery={displayGallery} />;
      })
      }
    </div>
    </>
  );
}

export default GalleryList;
