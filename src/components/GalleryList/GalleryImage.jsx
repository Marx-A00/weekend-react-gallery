function GalleryImage({ image }) {
  return (
    <div style={{ width: 150, height: 150 }} data-testid="galleryItem" key={image.id} className="image">
      <p>{image.title}</p>
      <p data-testid="description">{image.description}</p>
      <button>giggle</button>
    </div>
  );
}

export default GalleryImage;
