import React from 'react';
import 'tailwindcss/tailwind.css';

const LoginForm = () => {
  return (
    <form className="flex flex-col">
      <label className="mb-2">Documento:</label>
      <input type="text" placeholder="Ingresa tu documento" className="p-2 rounded-md border border-gray-300 mb-4" />

      <label className="mb-2">Contraseña:</label>
      <input type="password" placeholder="Ingresa tu contraseña" className="p-2 rounded-md border border-gray-300 mb-4" />

      <a href="#" className="mt-2">¿No tienes una cuenta? Regístrate aquí.</a>

      <button className="bg-blue-600 text-white p-2 rounded-md border-none mt-4">Ingresar</button>
    </form>
  );
};

export default LoginForm