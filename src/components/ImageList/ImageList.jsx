import Image from "./Image";

function ImageList({ GalleryList }) {
  return (
    <div className="ItemList">
      {GalleryList.map((image) => {
        return <Image key={image.id} image={image} />;
      })}
    </div>
  );
}

export default ImageList;
