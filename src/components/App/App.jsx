import { useState, useEffect } from 'react';
import Header from "../Header/Header";
import axios from 'axios';
import GalleryList from '../GalleryList/GalleryList';

function App() {

  useEffect(() => {
    displayGallery();
  }, []);

  const [galleryList,setGalleryList] = useState([]);

  const displayGallery = () => {
    axios
      .get("/gallery")
      .then((response) => {
        setGalleryList(response.data);
      })
      .catch((err) => {
        alert("error getting gallery");
        console.log(err);
      });
  };

  return (
    <div data-testid="app">
      <Header />
      <GalleryList
      displayGallery={displayGallery}
       galleryList={galleryList} />
    </div>
  );
}

export default App;
