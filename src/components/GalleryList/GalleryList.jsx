import GalleryImage from "./GalleryImage";

function GalleryList({ galleryList }) {
  return (
    <>
    <div data-testid="galleryList" className="ItemList">
      {
      galleryList.map((image) => {
        return <GalleryImage key={image.id} image={image.title} />;
      })
      }
    </div>
    </>
  );
}

export default GalleryList;
