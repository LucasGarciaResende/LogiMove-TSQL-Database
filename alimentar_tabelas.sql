DECLARE @new_driver_id INT;
SET @new_driver_id = NEXT VALUE FOR seq_drivers_id;

INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato)
VALUES
    (@new_driver_id, 'João Silva', 'D', 'Rua Alberto Santos 125, Centro, Rio de Janeiro - RJ', '21 98766-4331'),
    (@new_driver_id, 'Jane Almeida', 'AB', 'Av. Paulista, 1455, Centro, São Paulo - SP', '11 97402-1233'),
    (@new_driver_id, 'Bernardo Oliveira Santos', 'E', 'Rua das Flores, 789, Centro, Belo Horizonte - MG', '31 99901-5178');

DECLARE @new_client_id INT;
SET @new_client_id = NEXT VALUE FOR seq_clients_id;

INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato)
VALUES
    (@new_client_id, 'Maria Souza', 'Grupo Savanna Plan', 'Rua Alves Ribeiro, 801, Cambuci, São Paulo - SP', '11 98890-3441'),
    (@new_client_id, 'Pedro Santos', 'Revilla Logística', 'Av. Kepler, 130A, Centro, Belo Horizonte - MG', '31 97120-5663'),
    (@new_client_id, 'Ana Oliveira', 'Garvan Fornecimentos Ltda', 'Rua Yuri Guedes, 422, Centro, Rio de Janeiro - RJ', '21 99870-1413');

DECLARE @new_order_id INT;
SET @new_order_id = NEXT VALUE FOR seq_orders_id;

INSERT INTO Orders (OrderID. ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES
    (@new_order_id, 1, 1, 'Entregar em 14 dias para Sra. Souza', '2025-05-21', 'Em andamento'),
    (@new_order_id, 2, 2, 'Entrega express', '2025-05-20', 'Entregue'),
    (@new_order_id, 3, 3, 'Entrega urgente', '2025-05-25', 'Em andamento');

