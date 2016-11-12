#=
server.jl <port> will start an interactive game
session, facilitating a connection between two
players. The server should listen on the port
given. The server makes no moves, only makes
sure that two players connecting to it can play the
game. This should mean passing messages from
one player to another, and declaring the winner.
You need to handle disconnects gracefully. A disconnect
terminates the game. You only need to
handle one game at a time.

"<wincode>:<authString>:<movenum>:<movetype>:<sourcex>:<sourcey>
:<targetx>:<targety>:<option>:<cheating>:<targetx2>:<targety2>"
The authstring is a secret code generated by the server that only the individual player knows.
The client/player must send this code with every move
=#


function createConnection()
  port = parse(Int, ARGS[1])
  server = listen(port)
  #first call to listen() will create a server waiting
  # for incoming connections on the specified port (2000)
  while true
    socket=accept(server)
    line = readline(socket)
    write(socket, line)
    println(line)
#    println("Connection Open\n")
  end
end

createConnection()
#if wincode=0; start of a game

#The server responds with the wincode specifying if they are second or first as well
# as an auth code that must be included in every set of information sent to the server
#What server receives

#"<wincode>: <gametype>: <legality>: <timelimit>: <limitadd>"
#What server sends

#"<wincode>:<authString>:<gametype>:<legality>:<timelimit>:<limitadd>”
#wincode:player 1 (0) or 2 (1)
function gameInitialization(payload_C)

  payload=split(payload_C,":")
  payloadToClient=[]
  if payload[1]=='0'
    #begin a game
  end
  #Finding the gametype
  if payload[2]=='S' || payload[2]=='s'
    gameType = 'S'
    #standard
  elseif payload[2]=='M' || payload[2]=='m'
    gameType = 'M'
    #minishogi
  elseif payload[2]=='C' || payload[2]=='c'
    gameType = 'C'
    #chu
  else
    #not specified
    println("What.")
  end

  #checking legality of game
  if payload[3]=='0'
    #cheating game
    cheating = true
  elseif payload[3]=='1'
    #non cheating game
    cheating = false
  else
    #not specified
  end

  #new for each game. NOT EACH TURN/COMMUNICATION/MESSAGE
  AuthString = "password"
end

#listen for payloads with moves, if the payload is valid (read: syntactically correct) forward it to the other player with wincode 9.
#"<wincode>:<authString>:<movenum>:<movetype>:<sourcex>:<sourcey>:<targetx>:<targety>:<option>:<cheating>:<targetx2>:<targety2>"
function serverListen(payload)

end
