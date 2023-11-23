import { useState, useEffect } from 'react';
import Header from "../Header/Header";
import axios from "axios";
import ImageList from '../ImageList/ImageList';

function App() {
  const [GalleryList,SetGalleryList] = useState([]);

  useEffect(() => {
    displayGallery();
  }, []);

  const displayGallery = () => {
    axios
      .get("/gallery")
      .then((response) => {
        SetGalleryList(response.data);
      })
      .catch((err) => {
        alert("error getting gallery");
        console.log(err);
      });
  };

  return (
    <div>
      <Header />
      <ImageList imageList={GalleryList} />

  
      <p>The gallery goes here!</p>


      <img height={150} width={150} src="images/goat_small.jpg" />
    </div>
  );
}

export default App;
