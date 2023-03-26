import React from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';

function Navbar(){
    return(
        <div className="navbar">
            <div className="navbar_top show_navbar_top">
                <Link to="/" className="navbar_top_link">
                    <h4>Home</h4>
                </Link>
                <Link to="/career" className="navbar_top_link">
                    <h4>Karriere</h4>
                </Link>
                <Link to="/projects" className="navbar_top_link">
                    <h4>Projekte</h4>
                </Link>
                <Link to="/art" className="navbar_top_link">
                    <h4>Kunst</h4>
                </Link>
            </div>
        </div>
    )
}

export default Navbar;