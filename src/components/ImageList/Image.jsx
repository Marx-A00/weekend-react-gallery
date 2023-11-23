function Image({ image }) {
  return (
    <div style={{ width: 150, height: 150 }} key={image.id} className="image">
      <p>{image.title}</p>
      <p>{image.description}</p>
      <button>giggle</button>
    </div>
  );
}

export default Image;
