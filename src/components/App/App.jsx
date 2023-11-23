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
      <GalleryList galleryList={galleryList} />

  
      <p>The gallery goes here!</p>


      <img height={150} width={150} src="images/goat_small.jpg" /> 
      {/* could I do galleryList[0].url for source? */}
      <img height={150} width={150} src="images/stackMore_TalkLess.JPG" />
    </div>
  );
}

export default App;
