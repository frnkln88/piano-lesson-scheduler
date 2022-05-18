import React, { useState } from 'react';

const API = 'http://localhost:3000'

function Login() {
    const [fullname, setFullname] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('');
    const [loginEmail, setLoginEmail] = useState('')
    const [loginPassword, setLoginPassword] = useState('');

    function submitRegistration(e) {
        e.preventDefault();
        console.log('good stuff');
        fetch(`${API}/users`, {
            method: 'POST',
            headers: {
                'Content-type': 'application/json',
            },
            body: JSON.stringify({ user: { fullname, email, password } }),
        })
            .then((r) => r.json())
            .then((json) => console.log('DATA', json));
        setFullname('');
        setEmail('');
        setPassword('');
    }
    function submitLogin(e) {
        e.preventDefault();
        const loginData = {
             user: { email: loginEmail, password: loginPassword },
             };
        console.log('logging', loginData);
         fetch(`${API}/login`, {
            method: 'POST',
            headers: {
                Accepts: 'application/json',
                'Content-type': 'application/json',
            },
            body: JSON.stringify(loginData),
        })
            .then((r) => r.json())
            .then((json) => console.log('logged in', json));
        setLoginEmail('');
        setLoginPassword('');
    }
    
    return (
            <div className="Login">
                <h2>Login</h2>
                <form onSubmit={submitLogin}>
                <div>
                    E-mail: {' '}
                    <input
                        type="text"
                        placeholder="E-Mail"
                        value={loginEmail.email}
                        onChange={e => setLoginEmail(e.target.value)} />
                </div>
                <div>
                    Password: {' '}
                    <input
                        type="password"
                        placeholder="Password"
                        value={loginPassword.password}
                        onChange={e => setLoginPassword(e.target.value)} />
                </div>
                <button type="submit">Login </button>
         </form>
                <h2>Create New Student</h2>
            <form onSubmit={submitRegistration}>
                <div>
                    Name: {' '}
                    <input type="text" 
                    value={fullname} 
                    onChange={e => setFullname(e.target.value)} />
                </div>
                <div>
                    E-mail: {' '}
                    <input type="email" 
                    value={email} 
                    onChange={e => setEmail(e.target.value)} />
                </div>
                <div>
                    Password: {' '}
                    <input type="password" 
                    value={password} 
                    onChange={e => setPassword(e.target.value)} />
                </div>
                <button type="submit">Register </button>
        </form>
        </div>
    );
}

export default Login