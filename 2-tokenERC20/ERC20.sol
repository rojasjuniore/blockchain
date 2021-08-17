// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
import "./SafeMath.sol";

interface IRC20 {
    // devuelve la cantidad de tokens en existencia
    function totalSupply() external view returns (uint256);

    // devuelve la cantidad de tokens para una direccion indicada por parametros
    function balanceOf(address account) external view returns (uint256);

    // devuelve el numero de token que el spender podra gastar en nombrede propetario de la direccion
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    // devuelve un valor boleanos resultado de la operacion de compra
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    // devuelve un valor boleanos resultado de la operacion de gasto
    function aprove(address spender, uint256 amount) external returns (bool);

    // devuelve un valor boleanos resultado de la operacion de una cantida de tokens usando el metodo de allowance()
    function tranferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    // evento que se debe emitir cuando una cantidad de tokens pase de un origen a un destino
    event Tranfer(address indexed from, address indexed to, uint256 value);

    // Evento que se debe emitir cuando se establece una asignacion con el metodo allowance()
    event Approve(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract ERCBasic is IRC20 {
    event Tranfer(address indexed from, address indexed to, uint256 tokens);

    event Approve(
        address indexed owner,
        address indexed spender,
        uint256 tokens
    );

    using SafeMath for uint256;

    function totalSupply() public view override returns (uint256) {
        return 0;
    }

    function balanceOf(address account) public view override returns (uint256) {
        return 0;
    }

    function allowance(address owner, address spender)
        public
        view
        override
        returns (uint256)
    {
        return 0;
    }

    function transfer(address recipient, uint256 amount)
        public
        override
        returns (bool)
    {
        return false;
    }

    function approve(address spender, uint256 amount)
        public
        override
        returns (bool)
    {
        return false;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override returns (bool) {
        return false;
    }
}
