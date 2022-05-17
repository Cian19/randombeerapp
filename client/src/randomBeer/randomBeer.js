import React, { useEffect, useState } from 'react'
import axios from "axios";
// import * as React from 'react';
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import Container from '@mui/material/Container';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
import './randomBeer.css';
// import { Container, Row, Card, Col } from 'react-bootstrap';

const RandomBeer = () => {

    const [randomBeer, setRandomBeer] = useState([]);
    
    const getRandomBeer = () => {
        axios.get("http://localhost:3001/randombeer")
            .then((res) => { 
                console.log(res);
                setRandomBeer(res.data[0]);
            }).catch((err) => {
                if(err.res){
                    console.log(err);
                }});
        }
    useEffect(() => {
        getRandomBeer();
    }, [])

    var cardStyle = {
        textAlign: "left"
    }

    return (
        <div>

            <Container className="Cont"
                maxWidth="xs"
            >
            <Card style={cardStyle}>
                <CardContent>
                    <Typography gutterBottom variant="h6" component="div">
                        <p>Name: {randomBeer.name}</p>

                    </Typography>
                    <Typography variant="h6">
                        <p>Description: </p>
                    </Typography>
                    <Typography variant='body2'>
                        <p>{randomBeer.descript}</p>
                        </Typography>
                    
                    <Typography variant="h6">
                    <p>Alcohol Percent: {randomBeer.abv}%</p>

                    </Typography>
                    <Typography variant="h6">
                    <p>Brewery Location: {randomBeer.location}</p>

                    </Typography>
                </CardContent>
            </Card>
            </Container>
            <Button variant="contained"
                onClick={getRandomBeer}>
                Get random beer
            </Button>
        </div>
    )
}

export default RandomBeer;